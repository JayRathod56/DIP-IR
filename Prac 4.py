from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
import numpy as np
import nltk

def process(file):
	raw=open(file).read()
	tokens=word_tokenize(raw)
	words=[w.lower() for w in tokens]

	
	porter= nltk.PorterStemmer()
	Stemmed_tokens=[porter.stem(t) for t in words]

	#removing stop words
	stop_words = set(stopwords.words('english'))
	filtered_tokens=[w for w in Stemmed_tokens if not w in stop_words]

	#count words
	count=nltk.defaultdict(int)
	for word in filtered_tokens:
		count[word]+=1
	return count

def sim_cos_fun(x,y):
	dot_product= np.dot(x,y)
	norm_x= np.linalg.norm(x)
	norm_y= np.linalg.norm(y)
	return dot_product/(norm_x * norm_y)

def getSimilarity(txt1, txt2):
	words_lst=[]
	for key in txt1:
		words_lst.append(key)
	for key in txt2:
		words_lst_size = len(words_lst)

	v1= np.zeros(words_lst_size, dtype=np.int64)
	v2= np.zeros(words_lst_size, dtype=np.int64)
	i=0
	for (key) in words_lst:
		v1[i]= txt1.get(key,0)

		v2[i]=txt2.get(key,0)
		i=i+1
	return sim_cos_fun(v1,v2)
if __name__ == '__main__':
	txt1=process("C:\\Users\\jayan\\Documents\\Sem 6\\IR\\Sample.txt")
	txt2=process("C:\\Users\\jayan\\Documents\\Sem 6\\IR\\Sample2.txt")

	print("-"*100)

	print("Jay Rathod T127")

	print("1 means text documents are 100% similar")
	print("0 means text documents are not at all similar")
	print("The range between 0 and 1 gives how much two documents are similar")

	print("-"*100)

	print("Similarity between two text documments: ", getSimilarity(txt1, txt2))
